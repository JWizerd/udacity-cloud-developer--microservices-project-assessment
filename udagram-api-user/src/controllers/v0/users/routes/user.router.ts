import {Router, Request, Response} from 'express';

import {User} from '../models/User';
import {AuthRouter} from './auth.router';

const router: Router = Router();

router.use('/auth', AuthRouter);

router.get('/');

router.get('/:id', async (req: Request, res: Response) => {
  console.log("Locating User. START:", Date.now());
  const {id} = req.params;
  const item = await User.findByPk(id);
  res.send(item);
  console.log("Locating User. END:", Date.now());
});

export const UserRouter: Router = router;
