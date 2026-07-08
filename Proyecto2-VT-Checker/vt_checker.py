import requests

API_KEY = "PON_TU_API_KEY_AQUI"
URL = "https://www.virustotal.com/api/v3/files/"

def check_hash(file_hash):
    headers = {"x-apikey": API_KEY}
    response = requests.get(URL + file_hash, headers=headers)
    
    if response.status_code == 200:
        data = response.json()
        stats = data['data']['attributes']['last_analysis_stats']
        print(f"[+] Hash analizado: {file_hash}")
        print(f"[+] Resultado: Malicioso={stats['malicious']} Sospechoso={stats['suspicious']} Limpio={stats['harmless']}")
    elif response.status_code == 404:
        print("[-] Hash no encontrado en VirusTotal")
    else:
        print(f"[-] Error: {response.status_code}")

# Hash de prueba EICAR - es 100% seguro, es para probar antivirus
hash_prueba = "275a021bbfb6489e54d471899f7db9d1663fc695ec2fe2a2c4538aabf651fd0f"
check_hash(hash_prueba)
