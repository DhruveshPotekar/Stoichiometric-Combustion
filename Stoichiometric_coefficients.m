clear all
close all
clc

%calculating the stoichiometric coefficient of the following chemical reaction for alkanes,alkenes and alkynes
%C(n)H(2n+2) + ar(O(2) + 3.76N(2)) = aCO(2) + bH(2)O + cN(2)
%n = number of moles of carbon atoms
%ar = stiochiometric coefficient
%chemical formula for alkanes = C(n)H(2n+2)
%chemical formula for alkenes = C(n)H(2n)
%chemical formula for alkynes = C(n)H(2n-2)


%range of number of moles of carbon atoms 
n=1:10;


%calling the functions sto_coff_alkane, sto_coff_alkene and sto_coff_alkyne 
aa=sto_coff_alkane(n);
ae=sto_coff_alkene(n);
ay=sto_coff_alkyne(n);


%plotting the results of alkanes, alkenes and alkynes
plot(n,aa,'Linewidth',2,'color','b')
hold on
plot(n,ae,'Linewidth',2,'color','g')
hold on 
plot(n,ay,'Linewidth',2,'color','r')
hold on 

%specifing the name for x and y axis
xlabel('number of Carbon atoms','FontSize',12,'FontWeight','bold')
ylabel('Stoichiomatric coefficient','FontSize',12,'FontWeight','bold')

%it creates a legend with descriptive labels for each plotted data series
legend('alkane','alkene','alkyne','Location','best')
