# encoding: cp866

puts 
puts "��� - ��⢠ �� ������"
puts

your_hp = 100

troll_hp = 500

attgol = "1"
atttel = "2"
attnog = "3"
puts
puts "�� ����﫥��� �� ��ண� � ��த ������."
puts "��� ��� ����筮 �� ����, �� �� ��� த��� ����� � �� ����� ����� �� �뫨."
puts "��ண� ᢮�稢��� � �६�稩 ���."
puts

puts "�� ����⨫� �஫��. ���易���� ��⢠."

while your_hp > 0

agol = rand(1..500)
atel = rand(1..200)
anog = rand(1..100)
attack = rand(1..50)

puts
puts "�� ����� ᤥ���� ᫥���騥 ����⢨�:"
puts "(1) ������ ��� �� ������."
puts "(2) ������ ��� � ⥫�."
puts "(3) ������ ��� �� �����."
puts "������ ���� �� ��� ��� �⠪�."
puts
attuser = gets.to_s.strip.downcase


if troll_hp > 0 && attuser == attgol
	troll_hp = troll_hp - agol
	puts "�� 㤠ਫ� �஫�� �� ������ � ����᫨ #{agol} �஭�. � �஫�� ��⠫��� #{troll_hp} ���஢��"
		if troll_hp < 0
		puts "�஫�� �� �뤥ঠ� �⠪� � �����."
		golem_hp = 1000
		end
elsif troll_hp > 0 && attuser == atttel
	troll_hp = troll_hp - atel
	puts "�� 㤠ਫ� �஫�� � ����� � ����᫨ #{atel} �஭�. � �஫�� ��⠫��� #{troll_hp} ���஢��"
		if troll_hp < 0
		puts "�஫�� �� �뤥ঠ� �⠪� � �����."
		golem_hp = 1000
		end
elsif troll_hp > 0 && attuser == attnog
	troll_hp = troll_hp - anog
	puts "�� 㤠ਫ� �஫�� �� ����� � ����᫨ #{anog} �஭�. � �஫�� ��⠫��� #{troll_hp} ���஢��"
		if troll_hp < 0
		puts "�஫�� �� �뤥ঠ� �⠪� � �����."
  		golem_hp = 1000
		end
end

if troll_hp > 0
	your_hp = your_hp - attack
	puts "�஫�� ࠧ�������! � ����� ��� �஭ #{attack}. ��� ���஢� �⠫� #{your_hp}"
		if your_hp < 0
		puts "�� �� �뤥ঠ�� 㤠� � �������!"
		exit
		end
end

if golem_hp == 1000
puts
puts "�� �ᯥ� ��������� �� �墠⪨ � �஫��� �� ����⨫� ������."
puts
end

if troll_hp < 0 && golem_hp > 0

if golem_hp > 0 && attuser == attgol
	golem_hp = golem_hp - agol
	puts "�� 㤠ਫ� ������ �� ������ � ����᫨ #{agol} �஭�. � ������ ��⠫��� #{golem_hp} ���஢��"
		if golem_hp < 0
		puts "����� �� �뤥ঠ� �⠪� � �����."
		end
elsif golem_hp > 0 && attuser == atttel
	golem_hp = golem_hp - atel
	puts "�� 㤠ਫ� ������ � ����� � ����᫨ #{atel} �஭�. � ������ ��⠫��� #{golem_hp} ���஢��"
		if golem_hp < 0
		puts "����� �� �뤥ঠ� �⠪� � �����."
		end
elsif golem_hp > 0 && attuser == attnog
	golem_hp = golem_hp - anog
	puts "�� 㤠ਫ� ������ �� ����� � ����᫨ #{anog} �஭�. � ������ ��⠫��� #{troll_hp} ���஢��"
		if golem_hp < 0
		puts "����� �� �뤥ঠ� �⠪� � �����."
		end
end

if golem_hp > 0
	your_hp = your_hp - attack
	puts "����� �������� 㢥��稫�� � ࠧ���! ����� ��� ���� ��஬�� ������� �㫠�� � ����� ��� �஭ #{attack}. ��� ���஢� �⠫� #{your_hp}"
		if your_hp < 0
		puts "�� �� �뤥ঠ�� 㤠� � �������!"
		exit
		end
end
end


end