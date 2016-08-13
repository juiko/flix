class ModelController < ApplicationController

def index
#get   select alll
        @cliente = Cliente.all
end

end