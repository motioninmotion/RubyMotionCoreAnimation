class ShapesView < UIButton
  def init
    super

    backgroundColor = UIColor.blackColor

    # addSubview(image_view = UIImageView.new)
    # image_view.image = UIImage.imageNamed('title')
    # image_view.frame = [[32, 50], [256, 144]]
    # @image_layer = image_view.layer

    layer.addSublayer(@image_layer = CALayer.layer)
    @image_layer.contents = UIImage.imageNamed('title').CGImage
    @image_layer.position = [161, 122]
    @image_layer.bounds = [[0, 0], [256, 144]]
    @image_layer.speed = 0.2

    self
  end

  def animate(_)
    if @image_layer.opacity > 0.5
      @image_layer.opacity = 0.5
      @image_layer.position = [161, 235]
      # @image_layer.transform = CATransform3DMakeRotation(Math::PI/1.5, 1, 0, 0)
      # @image_layer.transform = CATransform3DMakeScale(0.5, 0.5, 1.0)
      @image_layer.transform = CATransform3DConcat(
        CATransform3DMakeRotation(Math::PI/1.5, 1, 0, 0),
        CATransform3DMakeScale(0.5, 0.5, 1.0)
      )
    else
      @image_layer.opacity = 1.0
      @image_layer.position = [161, 122]
      # @image_layer.transform = CATransform3DMakeRotation(Math::PI, 0, 0, 0)
      # @image_layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0)
      @image_layer.transform = CATransform3DConcat(
        CATransform3DMakeRotation(Math::PI, 0, 0, 0),
        CATransform3DMakeScale(1.0, 1.0, 1.0)
      )
    end
  end
end
