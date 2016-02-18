class DosesContoller < ActionController::Base



def create
  @dose = Dose.new(params)
  @dose.save

end

def new
  @dose = Dose.new
end

def destroy
  @dose = Dose.find(params[:id])
  @dose.destroy
end

end
