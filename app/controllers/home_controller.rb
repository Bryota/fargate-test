class HomeController < ApplicationController
    def index
        logger.info "============================================================"
        logger.info "home"
        render json: {status: 200, test: 'hahaha'}, status: 200
    end

    def show

    end

    def csv
        csv_data = CSV.generate do |csv|
            csv << ["ユーザー名", "メールアドレス"]
        end
        send_data(csv_data, filename: "ユーザー一覧.csv", type: :csv)
    end

    def csv_invalid
        csv_data = CSV.generate do |csv|
            csv << ["ユーザー名", "メールアドレス"]
        end
        send_data(csv_data, filename: "テスト?/<>テスト:.csv", type: :csv)
    end
end
