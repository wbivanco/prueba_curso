// Configuración que se completará con variables de entorno en Azure
const SUPABASE_URL = "URL_DE_TU_SUPABASE"; 
const SUPABASE_KEY = "TU_API_KEY_ANON"; 

document.getElementById('registroForm').addEventListener('submit', async (e) => {
    e.preventDefault();
    console.log("Enviando datos a Supabase...");
    // Aquí iría el fetch a la API de Supabase usando las variables configuradas
    alert("¡Inscripción exitosa! (Simulada para el Workshop)");
});