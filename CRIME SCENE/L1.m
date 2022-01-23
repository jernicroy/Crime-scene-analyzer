function L1(numOfReturnedImages, queryImageFeatureVector, dataset)
global murderer
global name
% input:
%   numOfReturnedImages : num of images returned by query
%   queryImageFeatureVector: query image in the form of a feature vector
%   dataset: the whole dataset of images transformed in a matrix of
%   features
% 
% output: 
%   plot: plot images returned by query

% extract image fname from queryImage and dataset
query_image_name = queryImageFeatureVector(:, end);
dataset_image_names = dataset(:, end);

queryImageFeatureVector(:, end) = [];
dataset(:, end) = [];

% compute manhattan distance
manhattan = zeros(size(dataset, 1), 1);
for k = 1:size(dataset, 1)
%     manhattan(k) = sum( abs(dataset(k, :) - queryImageFeatureVector) );
    % ralative manhattan distance
    manhattan(k) = sum( abs(dataset(k, :) - queryImageFeatureVector) ./ ( 1 + dataset(k, :) + queryImageFeatureVector ) );
end

% add image fnames to manhattan
manhattan = [manhattan dataset_image_names];

% sort them according to smallest distance
[sortedDist indx] = sortrows(manhattan);
sortedImgs = sortedDist(:, 2);

% clear axes
arrayfun(@cla, findall(0, 'type', 'axes'));
global queryImage
% display query image
str_name = int2str(query_image_name);
% queryImage = imread( strcat('images\', str_name, '.jpg') );
subplot(3, 7, 1);
imshow(queryImage, []);
title('Query Image', 'Color', [1 0 0]);

disp('Predicted Scenes:\n');
first=0;
second=0;
third=0;
fourth=0;
fifth=0;
sixth=0;
seventh=0;
eighth=0;
ninth=0;
% dispaly images returned by query
for m = 1:numOfReturnedImages
    if(m==1)
        
    img_name1 = sortedImgs(m);
    img_name1 = int2str(img_name1);
    str_name1 = strcat('images\', img_name1, '.jpg');
    imread(str_name1);
    end
        
    img_name = sortedImgs(m);
    img_name = int2str(img_name);
    str_name = strcat('images\', img_name, '.jpg');
    returnedImage = imread(str_name);
    subplot(3, 7, m+1);
    imshow(returnedImage, []);
    
     if(strcmp(img_name,'0')||strcmp(img_name,'1')||strcmp(img_name,'2')||strcmp(img_name,'3') )
        
        disp('NAME:STALIN');
        disp('LOCATION: NAGERCOIL');
        disp('CASES FILED:10');
        disp('CURRENT CASES:2');
        disp('MAJOR CASES:RAPIST');
        title('Predicted Murderer');
        if(strcmp(img_name,img_name1))
        name= 'Stalin';    
        murderer=imread('Murderer\1.jpeg');
        end
        second=second+1;
    end
    
    if(strcmp(img_name,'4')||strcmp(img_name,'5')||strcmp(img_name,'6')||strcmp(img_name,'7'))
        
        disp('NAME:STEVE');
        disp('LOCATION:CALIFORNIA');
        disp('CASES FILED:3');
        disp('CURRENT CASES:2');
        disp('MAJOR CASES:CHAIN SNATCHING');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
        name='Steve';   
        murderer=imread('Murderer\2.jpg');
         end  
        first=first+1;
    end
    
    if(strcmp(img_name,'8')||strcmp(img_name,'9')||strcmp(img_name,'10')||strcmp(img_name,'11'))
        
        disp('NAME:PETER');
        disp('LOCATION:LONDON');
        disp('CASES FILED:12');
        disp('CURRENT CASES:5');
        disp('MAJOR CASES:MURDER');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
        name='Peter';   
        murderer=imread('Murderer\3.jpg');
         end
        third=third+1;
    end
    
    if(strcmp(img_name,'12')||strcmp(img_name,'13')||strcmp(img_name,'14')||strcmp(img_name,'15'))
        
        disp('NAME:RUSSEL');
        disp('LOCATION:AUSTRALIA');
        disp('CASES FILED:20');
        disp('CURRENT CASES:6');
        disp('MAJOR CASES:MURDER');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
        name='Russel';   
        murderer=imread('Murderer\4.jpg');
         end
        fourth=fourth+1;
    end
    
    if(strcmp(img_name,'16')||strcmp(img_name,'17')||strcmp(img_name,'18')||strcmp(img_name,'19'))
        
        disp('NAME:JOHN');
        disp('LOCATION:SPAIN');
        disp('CASES FILED:14');
        disp('CURRENT CASES:4');
        disp('MAJOR CASES:RAPIST');
        title('Predicted Murderer');
       if(strcmp(img_name,img_name1))
           name='John';
        murderer=imread('Murderer\5.jpg');
         end
        fifth=fifth+1;
    end
    
     if(strcmp(img_name,'20')||strcmp(img_name,'21')||strcmp(img_name,'22')||strcmp(img_name,'23'))
        
         disp('NAME:ANDREW');
        disp('LOCATION:ENGLAND');
        disp('CASES FILED:17');
        disp('CURRENT CASES:6');
        disp('MAJOR CASES:CHAIN SNATCHING');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
            name='Andrew'; 
        murderer=imread('Murderer\6.jpg');
      
         end
        sixth=sixth+1;
     end
    
     if(strcmp(img_name,'24')||strcmp(img_name,'25'))
         disp('NAME:THARESH');
         disp('LOCATION:TAMILNADU');
         disp('CASES FILED: 49');
         disp('CURRENT CASES: 35');
         disp('MAJOR CASES: PICK POCKET');
         title('Predicted Murderer: ');
         if(strcmp(img_name,img_name1))
             name='THARESH';
             murderer=imread('Murderer\7.jpeg');
         end
         seventh=seventh+1;
     end

     if(strcmp(img_name,'26')||strcmp(img_name,'27')||strcmp(img_name,'28')||strcmp(img_name,'29'))
        
         disp('NAME: JERIN');
        disp('LOCATION: NAGERCOIL');
        disp('CASES FILED:34');
        disp('CURRENT CASES:8');
        disp('MAJOR CASES: CHAIN SNATCHING');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
            name='JERIN'; 
        murderer=imread('Murderer\8.jpg');
      
         end
        eighth=eighth+1;
     end
    
     if(strcmp(img_name,'30')||strcmp(img_name,'31')||strcmp(img_name,'32')||strcmp(img_name,'33'))
        
        disp('NAME: NITHISH');
        disp('LOCATION: NAGERCOIL');
        disp('CASES FILED:45');
        disp('CURRENT CASES:7');
        disp('MAJOR CASES: EVE TEASING');
        title('Predicted Murderer');
         if(strcmp(img_name,img_name1))
            name='NITHISH'; 
        murderer=imread('Murderer\9.jpeg');
      
         end
        ninth=ninth+1;
     end
    
end
%         figure,imshow(murderer);
%         title(strcat('Most Predicted Murderer: ',name));

        