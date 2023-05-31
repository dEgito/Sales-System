import { useState } from 'react';

function Home() {
  const [selectedOption, setSelectedOption] = useState('');

  const handleSelectChange = (event) => {
    setSelectedOption(event.target.value);
  };

  const handleOptionSelect = () => {
    switch (selectedOption) {
      case "1":
        console.log("Cadastrar");
        break;
      case "2":
        console.log("Login")
        break;
      case "3":
        console.log("Acessar sistema")
        break;
      default:
        console.log("Erro!");
        break;
    }
  };

  return (
    <div>
      <p>Bem-vindo ao Sugar Race!</p>
      <label>Selecione uma opção:</label>
      <select value={selectedOption} onChange={handleSelectChange}>
        <option value="">Selecione</option>
        <option value="1">Cadastrar</option>
        <option value="2">Login</option>
        <option value="3">Acessar sistema</option>
      </select>
      <button onClick={handleOptionSelect}>Selecionar</button>
    </div>
  );
}

export default Home;
