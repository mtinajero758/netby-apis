function fn() {
  var env = karate.env; 
  if (!env) {
    env = 'dev';
  }
  
  var config = {
    env: env,
    baseUrl: 'https://reqres.in'
  };

  // Configuraciones de Timeout
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  
  // SOLUCIÓN AL ERROR 401: 
  // Configuramos un header global para que todas las peticiones lleven la x-api-key
  // Si no tienes una real, se usa una cadena cualquiera para validar si el endpoint la acepta.
  karate.configure('headers', { 'x-api-key': 'DEMO-API-KEY' });
  
  return config;
}