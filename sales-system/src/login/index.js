import { useState } from 'react';
import { Container } from "../style";

function Login() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleUsernameChange = (event) => {
    setUsername(event.target.value);
  };

  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleFormSubmit = (event) => {
    event.preventDefault();

    //LÓGICA DE VALIDAÇÃO
    setUsername('');
    setPassword('');
  };

  return (
    <Container>
      <p>Login</p>
      <form onSubmit={handleFormSubmit}>
        <label>Usuário</label>
        <input type="text" value={username} onChange={handleUsernameChange} />
        <label>Senha</label>
        <input type="password" value={password} onChange={handlePasswordChange} />
        <button type="submit">Login</button>
      </form>
    </Container>
  );
}

export default Login;
