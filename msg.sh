discord_url="https://discord.com/api/webhooks/784511643504869386/uDN2FFgwbGP-g69c9qV7Argr98UXcUIqn3OreAVrnkoalnnSvIxZis_Uk9xeQkPT67Bk"

generate_post_data() {
  cat <<EOF
{
  "content": "Amigos <@&782082777528008724>, atenção:",
  "embeds": [{
    "title": "Alô alô leia com atenção!",
    "description": "Este aqui é um teste de mensagem webhook *à partir das **21h**!* :smirk_cat: \n**ATENÇÃO!** :grimacing:",
    "color": "05555"
  }]
}
EOF
}


# POST request to Discord Webhook
curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $discord_url
