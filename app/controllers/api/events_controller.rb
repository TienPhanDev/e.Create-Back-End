class Api::EventsController < ApplicationController
    # GET /events/:id
    def show
        event = Event.find(params[:id])

        render json: event.to_json(
            except: [:created_at, :updated_at]
        )
    end

    # GET /events
    def index
        @events = Event.all #Event.order('date ASC')
        render json: @events.to_json(
    )
    end

    # POST /events
    def create
        event = Event.create(
            title: params[:title], 
            description: params[:description], 
            location: params[:location],
            image_url: params[:image_url], 
            date: params[:date], 
            price: params[:price]
        )
            render json: event.to_json(
                :only => [:id, :title, :description, :location, :image_url, :date, :price]
            )
    end

    # DELETE /events/:id
    def destroy
    end
end
