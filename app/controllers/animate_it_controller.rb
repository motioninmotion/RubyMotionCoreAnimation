class AnimateItController < UIViewController
  def loadView
    self.view = ShapesView.new
  end

  def viewDidAppear(_)
    super
    view.addTarget(self.view, action: 'animate:', forControlEvents: UIControlEventTouchUpInside)
  end
end
