import index from './index.html'
import express from 'express'
const app = express!
const port = process.env.PORT or 3000

app.get '/' do(req, res)
	res.send index.body

app.get "/:otherpages" do(req,res)
	res.send index.body

app.get "/:page/:subpage" do(req,res)
	res.send index.body	

imba.serve app.listen(port)
