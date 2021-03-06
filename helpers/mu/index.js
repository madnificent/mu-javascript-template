import app from './server';
import sparql from './sparql';
import uuidV1 from 'uuid/v1';

// generates a uuid
const uuid = uuidV1;

const mu = {
  app: app,
  sparql: sparql,
  SPARQL: sparql.sparql,
  query: sparql.query,
  update: sparql.update,
  uuid: uuid
}

const SPARQL = mu.SPARQL, query = mu.query, update = mu.update;

export { app , sparql, SPARQL, query, update, uuid };
export default mu;
