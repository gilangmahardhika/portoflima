class WorkGalleriesController < ApplicationController
  # GET /work_galleries
  # GET /work_galleries.json
  def index
    @work_galleries = WorkGallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @work_galleries }
    end
  end

  # GET /work_galleries/1
  # GET /work_galleries/1.json
  def show
    @work_gallery = WorkGallery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @work_gallery }
    end
  end

  # GET /work_galleries/new
  # GET /work_galleries/new.json
  def new
    @work_gallery = WorkGallery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @work_gallery }
    end
  end

  # GET /work_galleries/1/edit
  def edit
    @work_gallery = WorkGallery.find(params[:id])
  end

  # POST /work_galleries
  # POST /work_galleries.json
  def create
    @work_gallery = WorkGallery.new(params[:work_gallery])

    respond_to do |format|
      if @work_gallery.save
        format.html { redirect_to @work_gallery, notice: 'Work gallery was successfully created.' }
        format.json { render json: @work_gallery, status: :created, location: @work_gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @work_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /work_galleries/1
  # PUT /work_galleries/1.json
  def update
    @work_gallery = WorkGallery.find(params[:id])

    respond_to do |format|
      if @work_gallery.update_attributes(params[:work_gallery])
        format.html { redirect_to @work_gallery, notice: 'Work gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @work_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_galleries/1
  # DELETE /work_galleries/1.json
  def destroy
    @work_gallery = WorkGallery.find(params[:id])
    @work_gallery.destroy

    respond_to do |format|
      format.html { redirect_to work_galleries_url }
      format.json { head :no_content }
    end
  end
end
