import { useState } from 'react';
import axios from 'axios';

import '../styles/components/pages/ContactoPage.css';

const ContactoPage = (props) => {
    

        const initialForm = {
            nombre: '',
            email: '',
            telefono: '',
            mensaje: ''
        }
        const [sending, setSending] = useState(false);
        const [msg, setMsg] = useState('');
        const [formData, setFormData] = useState(initialForm);

        const handleChange = e => {
            const {name, value} = e.target;
            setFormData(oldData => ({
            ...oldData,
            [name]: value
            }));
        }

        const handleSubmit = async e =>{
            e.preventDefault();
            setMsg('');
            setSending(true)
            const response = await axios.post('http://localhost:3000/api/contacto', formData);
            setSending(false);
            setMsg(response.data.message);
            if  (response.data.error === false){
                setFormData(initialForm)
            }
        }

    

return (
        <main className='holder'>
            <div className='columna de contacto'>
                <h2>Complete el siguiente formulario</h2>
                <form action='/contacto' method='post' className='formulario' onSubmit={handleSubmit}>
                    <p>
                        <label>Nombre </label>
                        <input type='text' name='nombre' value={formData.nombre} onChange ={handleChange} />
                    </p>
                    <p> <label>Email </label>
                        <input type='text' name='email' value={formData.email} onChange ={handleChange} />
                    </p >
                    <p ><label>Teléfono </label>
                        <input type='text' name='telefono' value={formData.telefono} onChange ={handleChange} />
                    </p >
                    <p ><label>Comentario </label>
                        <textarea name='mensaje' value={formData.mensaje} onChange ={handleChange}></textarea>
                    </p >
                    {sending ? <p>Enviando...</p>: null}
                    {msg ? <p>{msg}</p>: null}
                    <p className='centrar'>
                        <input type='submit' value="Enviar"  />
                    </p>

                </form >
            </div >
            <div className='columna datos'>
                <h2>Otras vias de comunicación</h2>
                <p>También podes contactarte con nosotros por los siguientes medios: </p>
                <ul>
                <li>Teléfono: +54 9 11 5721 2690</li>
                <li>Email: info@solucionesagropecuarias.com.ar</li>
            </ul>

            </div>

        </main >
    );
}
export default ContactoPage;