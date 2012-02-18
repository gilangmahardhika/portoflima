class UserSkillsController < ApplicationController
  # GET /user_skills
  # GET /user_skills.json
  def index
    @user_skills = UserSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_skills }
    end
  end

  # GET /user_skills/1
  # GET /user_skills/1.json
  def show
    @user_skill = UserSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_skill }
    end
  end

  # GET /user_skills/new
  # GET /user_skills/new.json
  def new
    @user_skill = UserSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_skill }
    end
  end

  # GET /user_skills/1/edit
  def edit
    @user_skill = UserSkill.find(params[:id])
  end

  # POST /user_skills
  # POST /user_skills.json
  def create
    @user_skill = UserSkill.new(params[:user_skill])

    respond_to do |format|
      if @user_skill.save
        format.html { redirect_to @user_skill, notice: 'User skill was successfully created.' }
        format.json { render json: @user_skill, status: :created, location: @user_skill }
      else
        format.html { render action: "new" }
        format.json { render json: @user_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_skills/1
  # PUT /user_skills/1.json
  def update
    @user_skill = UserSkill.find(params[:id])

    respond_to do |format|
      if @user_skill.update_attributes(params[:user_skill])
        format.html { redirect_to @user_skill, notice: 'User skill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_skills/1
  # DELETE /user_skills/1.json
  def destroy
    @user_skill = UserSkill.find(params[:id])
    @user_skill.destroy

    respond_to do |format|
      format.html { redirect_to user_skills_url }
      format.json { head :no_content }
    end
  end
end
