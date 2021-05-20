import express, { Request, Response } from "express"
import mysql from "mysql"
import bodyParser from "body-parser"

const app = express()
const db = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'mysql1234',
	database: 'songdb'
})

db.connect();

app.use(bodyParser.json())

app.listen('3000', () => {
	console.log('Server Started')
})

app.get('/', (req: Request, res: Response) => {
	const stmt: string = 'select * from song';
	db.query(stmt, (err, rows) => {
		if (err) return console.log(err);
		res.send(rows);
	})
})

app.post('/insert', (req: Request, res: Response) => {
	const query: string = 'insert into song values (?)';
	const data = [
		req.body.id,
		req.body.name,
		req.body.singer,
		req.body.youtube
	]
	db.query(query, [data], (err, rows) => {
		if (err) return console.log(err);
		res.json({
			status: 200,
			message: 'Success: Insert ${row.affectedRows} song'
		})
	})
})

app.get('/delete', (req: Request, res: Response) => {
	const query: string = 'delete from song where id = ?';
	db.query(query,req.query.id,(err,rows)=>{
		if (err) return console.log(err)
		res.json({
			status: 200,
			message: 'Success: Delete ${rows.affectedRows} song'
		})
	})
});
