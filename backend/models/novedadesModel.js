var pool = require('./bd');

//**Lista novedades */
async function getNovedades() {
    var query = 'select * from novedades';
    var rows = await pool.query(query);
    return rows;
}

//**Insert novedades */

async function insertNovedad(obj) {
    try {
        var query = "insert into novedades set  ? ";
        var rows = await pool.query(query, [obj])
        return rows;
        
    } catch (error) {
        console.log(error);
        throw error;
    }
}

//**Delete novedades */
async function deleteNovedadById(id){
    var query = 'delete from novedades  where id = ?';
    var rows = await pool.query(query, [id]);
    return rows    
}

/** Update Novedades get and update*/
async function getNovedadesById(id){
    var query = 'select * from novedades where id = ?';
    var rows = await pool.query(query, [id]);
    return rows[0];
  }
  async function modificarNovedadesById(obj, id){
      try{
          var query = 'update novedades set ? where id = ?';
          var rows = await pool.query(query, [obj, id]);
          return rows;
      }catch(error){
          throw error;
      }
  }




    module.exports = { getNovedades, insertNovedad, deleteNovedadById, getNovedadesById, modificarNovedadesById  }