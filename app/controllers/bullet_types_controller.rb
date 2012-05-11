class BulletTypesController < ApplicationController
  # GET /bullet_types
  # GET /bullet_types.json
  def index
    @bullet_types = BulletType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bullet_types }
    end
  end

  # GET /bullet_types/1
  # GET /bullet_types/1.json
  def show
    @bullet_type = BulletType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bullet_type }
    end
  end

=begin
  # GET /bullet_types/new
  # GET /bullet_types/new.json
  def new
    @bullet_type = BulletType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bullet_type }
    end
  end

  # GET /bullet_types/1/edit
  def edit
    @bullet_type = BulletType.find(params[:id])
  end

  # POST /bullet_types
  # POST /bullet_types.json
  def create
    @bullet_type = BulletType.new(params[:bullet_type])

    respond_to do |format|
      if @bullet_type.save
        format.html { redirect_to @bullet_type, notice: 'Bullet type was successfully created.' }
        format.json { render json: @bullet_type, status: :created, location: @bullet_type }
      else
        format.html { render action: "new" }
        format.json { render json: @bullet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bullet_types/1
  # PUT /bullet_types/1.json
  def update
    @bullet_type = BulletType.find(params[:id])

    respond_to do |format|
      if @bullet_type.update_attributes(params[:bullet_type])
        format.html { redirect_to @bullet_type, notice: 'Bullet type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bullet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bullet_types/1
  # DELETE /bullet_types/1.json
  def destroy
    @bullet_type = BulletType.find(params[:id])
    @bullet_type.destroy

    respond_to do |format|
      format.html { redirect_to bullet_types_url }
      format.json { head :no_content }
    end
  end
=end
end
