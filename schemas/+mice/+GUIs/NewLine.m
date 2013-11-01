f = figure;
set(f, 'position',[1000 600 500 500])

uicontrol('style','text','string','Line Abbreviation:','position',[50 400 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Full Line Name:','position',[50 370 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Recipient Strain:','position',[50 340 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Donor Strain:','position',[50 310 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Minimum Number of Backcrosses (N):','position',[50 280 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Sequence:','position',[50 250 200 29],'fontsize',14,'HorizontalAlignment','Right');
uicontrol('style','text','string','Description:','position',[50 220 400 16],'fontsize',14);

h.line = uicontrol('style','edit','position',[250 400 200 30],'fontsize',14,'tag','lineField');
h.line_full = uicontrol('style','edit','position',[250 370 200 30],'fontsize',14,'tag','lineFullField');
h.rec_strain = uicontrol('style','edit','position',[250 340 200 30],'fontsize',14,'tag','recipientField');
h.donor_strain = uicontrol('style','edit','position',[250 310 200 30],'fontsize',14,'tag','donorField');
h.n = uicontrol('style','edit','position',[250 280 200 30],'fontsize',14,'tag','nField');
h.seq = uicontrol('style','edit','position',[250 250 200 30],'fontsize',14,'tag','seqField');
h.line_notes = uicontrol('style','edit','position',[50 71 400 149],'fontsize',14,'tag','notesField');

h.modify_box = uicontrol('style','checkbox','string','Modify Existing Line','position',[50 430 200 29],'fontsize',14,'tag','modifyBox','Callback',@mice.GUIs.modifyLine);
h.submit = uicontrol('style','pushbutton','string','Submit New Line to Database','position',[122 10 256 50],'fontsize',16,'Callback',@mice.GUIs.submitLine);
