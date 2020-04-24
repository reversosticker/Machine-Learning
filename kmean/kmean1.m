function [centroids,indices] = kmean1()
 n=150; %sample size
 x=[randn(n,1)+3;randn(n,1)+3];
 y=[randn(n,1)+3;randn(n,1)+3];
 subplot(1,2,1)
 plot(x,y,'ok','MarkerFaceColor','k')
 K = 3;
 max_iterations = 10;
 X=[x,y];
 centroids = initCentroids(X, K);
 for i=1:max_iterations
  indices = getClosestCentroids(X, centroids);
  centroids = computeCentroids(X, indices, K);
 subplot(1,2,2)
 scatter(x,y,10,indices,'filled')
end
