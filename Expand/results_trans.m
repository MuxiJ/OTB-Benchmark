path1 = 'G:\LearningAlgorithm\OTB100\tracker_benchmark_v1.0\results\results_OPE_ltdsst\init';
Filelist = dir(path1); %�������б�
[n,c] =size(Filelist); %���ؾ�����,�У�nΪ��������
disp(n);disp(c);
 for i = 3:n;
     disp(Filelist(i).name);
     Newname=strcat(Filelist(i).name,'_ltdsst'); %Basketball_ltdsst
     newname=lower(Newname); %basketball_ltdsst    
     matname = strcat(lower(Filelist(i).name),'_fDSST.mat'); %basketball_fDSST.mat
     results1 = importdata(fullfile('G:\LearningAlgorithm\OTB100\tracker_benchmark_v1.0\results\results_OPE_fDSST',matname));
     results=results1; %����results{1,1}=s1;
     matrix2 = importdata(fullfile(path1,Filelist(i).name,'res_ltdsst.txt'));
     results{1,1}.res =matrix2;
     save(fullfile(path1,newname),'results'); %save�Զ����mat�����ü�.mat
%      disp(newname);
 end
 
%     �����ļ�����
%     clear
%     results1 = importdata('G:\LearningAlgorithm\OTB100\tracker_benchmark_v1.0\results\results_OPE_fDSST\Basketball_fDSST.mat');
%     results=results1; %����results{1,1}=s1;
%     matrix2 = importdata('G:\LearningAlgorithm\OTB100\tracker_benchmark_v1.0\results\results_OPE_ltdsst\init\Basketball\res_ltdsst.txt');
%     results{1,1}.res =matrix2;
%     save('G:\LearningAlgorithm\OTB100\tracker_benchmark_v1.0\results\results_OPE_ltdsst\init\Basketball\haha','results');
    
