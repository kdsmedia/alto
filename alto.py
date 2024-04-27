from telegram.ext import Updater, CommandHandler

# Fungsi untuk menangani perintah /start
def start(update, context):
    update.message.reply_text('Halo! Selamat datang di bot Telegram sederhana.')

# Fungsi untuk menangani perintah /help
def help(update, context):
    update.message.reply_text('Bot ini adalah bot sederhana yang dapat melakukan beberapa perintah.')

def main():
    TOKEN = "token_bot_anda"  # Ganti dengan token bot Anda
    updater = Updater(TOKEN, use_context=True)
    dp = updater.dispatcher

    # Menambahkan handler untuk perintah /start
    dp.add_handler(CommandHandler("start", start))

    # Menambahkan handler untuk perintah /help
    dp.add_handler(CommandHandler("help", help))

    # Memulai bot
    updater.start_polling()

    # Menyimpan bot berjalan hingga proses dihentikan secara manual
    updater.idle()

if __name__ == '__main__':
    main()
