function [ o ] = Matching( filename )
    a=Akarsilastirma( filename );
    i=Ikarsilastirma( filename );
%     [minA, maxA]=Alimit();
%     [minI, maxI]=Ilimit();
    results = [a,i];
    m=max(results);
    disp(m);
    disp(a);
    disp(i);
    if m==a && 20.0000< m && m <35.0000
        o=sprintf('a');
        
    elseif m==i && 4.0000< m && m <20.0000
        o=sprintf('i');
    else
        o=sprintf('Harf Bulunamadi!');
    end
end

