path1 = 'G:\LearningAlgorithm\OTB100\Benchmark_VOT2015';
Seqlist = dir(path1); %�������б�
[n,c] =size(Seqlist); %���ؾ�����,�У�nΪ��������
disp(n);disp(c);
for i = 3:n;
    disp(Seqlist(i).name);% bag
    
    %Benchmark_VOT2015/bag/groundtruth.txtֻ����ǰ4�в�������
    A = load(fullfile(path1,Seqlist(i).name,'groundtruth.txt'));
    [m,n]=size(A);
    a = A(1:m,1:4);
    dlmwrite(fullfile(path1,Seqlist(i).name,'groundtruth_rect.txt'), round(a));
    
    %Benchmark_VOT2015/bag/00000001.jpg �Ƶ���Benchmark_VOT2015/bag/img/00000001.jpg����Ҫ��Benchmark_VOT2015/list.txt����
    pictures = dir(strcat(fullfile(path1,Seqlist(i).name),'\*.jpg'));
    path2 = fullfile(path1,Seqlist(i).name,'img\');
    movefile(strcat(fullfile(path1,Seqlist(i).name),'\*.jpg'), path2);
    
    %/img/00000001.jpg��Ϊ/img/0001.jpg
    Folder = fullfile(path1,Seqlist(i).name,'img');
    long_picture = dir(fullfile(Folder,'*.jpg'));
    len=length(long_picture);
    for j=1:len
        disp(long_picture(j).name);
        oldname=fullfile(Folder,long_picture(j).name);%00000001.jpg
        newname=fullfile(Folder,num2str(j,'%04d.jpg'));%0001.jpg
        disp(oldname);disp(newname);
%         eval(['!rename' 32 oldname 32 newname]);
        movefile(oldname, newname);
    end
    
end
     
% A = load('G:\LearningAlgorithm\OTB100\Benchmark_VOT2015\bag\groundtruth.txt');
% [m,n]=size(A);
% a = A(1:m,1:4);
% dlmwrite('G:\LearningAlgorithm\OTB100\Benchmark_TB100\bag\groundtruth_rect.txt', round(a));

% long_picture = dir('G:\LearningAlgorithm\OTB100\Benchmark_VOT2015\basketball\img\');
% len=length(long_picture);disp(len);
% for i=3:len
%     oldname=strcat('G:\LearningAlgorithm\OTB100\Benchmark_VOT2015\basketball\img\',long_picture(i).name);%00000001.jpg
%     newname=strcat('G:\LearningAlgorithm\OTB100\Benchmark_VOT2015\basketball\img\',num2str(i-2,'%04d.jpg'));%0001.jpg
% %     oldname=long_picture(i).name;%00000001.jpg
% %     newname=num2str(i-2,'%04d.jpg');%0001.jpg
%     disp(oldname);disp(newname);
%     movefile(oldname, newname);
% %     eval(['!rename' 32 oldname 32 newname]);
% end

