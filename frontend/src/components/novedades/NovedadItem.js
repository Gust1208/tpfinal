/* eslint-disable jsx-a11y/alt-text */
import React from 'react';

const NovedadItem = (props) => {
    const {title, imagen, body} = props;

    return (
              
        <div className = "novedades">
        <h3>{title}</h3>        
        <img src={imagen} />
        <div dangerouslySetInnerHTML={{ __html: body}}/>
        <hr />
        </div>
    );
}

export default NovedadItem;