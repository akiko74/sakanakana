describe TopController do
  describe 'Show random pictures' do
    it 'should have maximum of 6 pictures at random' do
      #Picture.stub(:order).and_return(mock(Object, :limit => true))
      mock_pictures = [ mock_model(Picture),mock_model(Picture),mock_model(Picture), mock_model(Picture),mock_model(Picture)]
      Picture.stub(:limit).and_return(mock_pictures)

      #mock_result = mock(Object)
      #mock_result.stub(:limit).and_return(mock_pictures)
      #Picture.stub(:order).and_return(mock_result)


      #Picture.stub(:order).and_return(mock(Object, :limit => true))
      #上の行と下の3行は同じ意味
      #mock_result = mock(Object)
      #mock_result.stub(:limit).and_return(true)
      #Picture.stub(:order).and_return(mock_result)

      #mock_result.should_receive(:limit).with(6)
      Picture.should_receive(:limit).with(6)

      get :index
      response.should be_success
      response.should render_template "top/index"
      assigns[:pictures].should eq(mock_pictures)
    end
  end
end  
