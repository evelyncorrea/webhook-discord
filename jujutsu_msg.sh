# Webhook URL
discord_url="https://discord.com/api/webhooks/784511643504869386/uDN2FFgwbGP-g69c9qV7Argr98UXcUIqn3OreAVrnkoalnnSvIxZis_Uk9xeQkPT67Bk"

generate_post_data() {
  cat <<EOF
{
  "content": "JUJUTSU!!!!!!!!!!",
  "embeds": [{
    "title": "Alô alô leia com atenção <:jujutsu_feira_5:784510037879816264>",
    "description": "Amigos <@&782082777528008724>! Hoje é dia de Jujutsu Kaisen! Vamos nos reunir para assistir no canal de voz da category *JUJUTSU-FEIRA* *à partir das **21h**!* :smirk-cat: \n
    **ATENÇÃO!** \n
    Pessoal importante dorme cedo, se não aparecer até 23h, vamos começar sem você :grimacing:",
    "color": "05555"
  }]
}
EOF
}


# POST request to Discord Webhook
curl -H "Content-Type: application/json" -X POST -d "$(generate_post_data)" $discord_url
