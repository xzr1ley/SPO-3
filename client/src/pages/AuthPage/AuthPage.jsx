import React, { useContext, useState } from 'react';
import styles from './AuthPage.module.css';
import { NavLink, useLocation, useNavigate } from 'react-router-dom';
import { LOGIN_ROUTE, REGISTRATION_ROUTE, } from '../../utils/consts';
import { login, registration } from '../../http/userAPI';
import { Context } from '../../index';
import { MAIN_ROUTE } from '../../utils/consts';


const AuthPage = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const handleSubmit = (e) => {
     e.preventDefault();   
 };
     const {user} = useContext(Context)
     const location = useLocation()
     const isLogin = location.pathname === LOGIN_ROUTE
     const navigate = useNavigate()
     const auth = async () => {
       try {
           let data;
           if (isLogin) {
             data = await login(email, password) 
           } else {
             data = await registration(email, password)
           }
         user.setUser(user)
         user.setIsAuth(true)
         user.setEmail(email)
         navigate(MAIN_ROUTE)
       } catch (e) {
         alert(e.response.data.message)
       }
     }
 
  return (
     <form className={styles.form} onSubmit={handleSubmit}>
       <h2 className={styles.title}>{isLogin ? 'Авторизация' : 'Регистрация'}</h2>
       <input
         type="email"
         name="email"
         placeholder="Email"
         value={email}
         onChange={(e) => setEmail(e.target.value)}
       />
       <input
         type="password"
         name="password"
         placeholder="Password"
         value={password}
         onChange={(e) => setPassword(e.target.value)}
       />
       {isLogin
        
         ?
        
         <div className={styles.question_box}>
             <NavLink to={REGISTRATION_ROUTE} className={styles.question}>Нет аккаунта?</NavLink>
         </div>
         
         :
 
         <div className={styles.question_box}>
             <NavLink to={LOGIN_ROUTE} className={styles.question}>Есть аккаунт?</NavLink>
         </div>
       }
       <button type="submit" className={styles.submit} onClick={auth}>
         {isLogin ? 'Войти' : 'Зарегистрироваться'}
       </button>
     </form>
  );
 };
export default AuthPage