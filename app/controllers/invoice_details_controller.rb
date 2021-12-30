class InvoiceDetailsController < ApplicationController
  protect_from_forgery
  before_action :set_invoice_detail, only: %i[ show edit update destroy ]

  # GET /invoice_details or /invoice_details.json
  def index
    @invoice_details = InvoiceDetail.all
  end

  # GET /invoice_details/1 or /invoice_details/1.json
  def show
  end

  # GET /invoice_details/new
  def new
    @invoice_detail = InvoiceDetail.new
  end

  # GET /invoice_details/1/edit
  def edit
  end

  # POST /invoice_details or /invoice_details.json
  def create
    @invoice_detail = InvoiceDetail.new(invoice_detail_params)

    respond_to do |format|
      if @invoice_detail.save
        format.html { redirect_to @invoice_detail, notice: "Invoice detail was successfully created." }
        format.json { render :show, status: :created, location: @invoice_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_details/1 or /invoice_details/1.json
  def update
    respond_to do |format|
      if @invoice_detail.update(invoice_detail_params)
        format.html { render :show, status: :ok, notice: "Invoice detail was successfully updated." }
        format.json { render :show, status: :ok, location: @invoice_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_details/1 or /invoice_details/1.json
  def destroy
    @invoice_detail.destroy
    respond_to do |format|
      format.html { redirect_to invoice_details_url, notice: "Invoice detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_detail
      @invoice_detail = InvoiceDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoice_detail_params
      params.require(:invoice_detail).permit(:title, :quantity, :unit, :unit_price, :sort, :invoice_id)
    end
end
