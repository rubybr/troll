# encoding: cp866

puts 
puts "Игра - Битва за Эдгорх"
puts

your_hp = 100

troll_hp = 500

attgol = "1"
atttel = "2"
attnog = "3"
puts
puts "Вы напрялетесь по дороге в город Эдгорх."
puts "Там вас конечно не ждут, но это ваша родная земля и вы давно здесь не были."
puts "Дорога сворачивает в дремучий лес."
puts

puts "Вы встретили тролля. Завязалась битва."

while your_hp > 0

agol = rand(1..500)
atel = rand(1..200)
anog = rand(1..100)
attack = rand(1..50)

puts
puts "Вы можете сделать следующие действия:"
puts "(1) Ударить его по голове."
puts "(2) Ударить его в тело."
puts "(3) Ударить его по ногам."
puts "Введите одну из цифр для атаки."
puts
attuser = gets.to_s.strip.downcase


if troll_hp > 0 && attuser == attgol
	troll_hp = troll_hp - agol
	puts "Вы ударили тролля по голове и нанесли #{agol} урона. У тролля осталось #{troll_hp} здоровья"
		if troll_hp < 0
		puts "Тролль не выдержал атаки и погиб."
		golem_hp = 1000
		end
elsif troll_hp > 0 && attuser == atttel
	troll_hp = troll_hp - atel
	puts "Вы ударили тролля в живот и нанесли #{atel} урона. У тролля осталось #{troll_hp} здоровья"
		if troll_hp < 0
		puts "Тролль не выдержал атаки и погиб."
		golem_hp = 1000
		end
elsif troll_hp > 0 && attuser == attnog
	troll_hp = troll_hp - anog
	puts "Вы ударили тролля по ногам и нанесли #{anog} урона. У тролля осталось #{troll_hp} здоровья"
		if troll_hp < 0
		puts "Тролль не выдержал атаки и погиб."
  		golem_hp = 1000
		end
end

if troll_hp > 0
	your_hp = your_hp - attack
	puts "Тролль разозлился! И нанес вам урон #{attack}. Ваше здоровье стало #{your_hp}"
		if your_hp < 0
		puts "Вы не выдержали удар и погибли!"
		exit
		end
end

if golem_hp == 1000
puts
puts "Не успев опомнится от схватки с троллем вы встретили Голема."
puts
end

if troll_hp < 0 && golem_hp > 0

if golem_hp > 0 && attuser == attgol
	golem_hp = golem_hp - agol
	puts "Вы ударили голема по голове и нанесли #{agol} урона. У голема осталось #{golem_hp} здоровья"
		if golem_hp < 0
		puts "Голем не выдержал атаки и погиб."
		end
elsif golem_hp > 0 && attuser == atttel
	golem_hp = golem_hp - atel
	puts "Вы ударили голема в живот и нанесли #{atel} урона. У голема осталось #{golem_hp} здоровья"
		if golem_hp < 0
		puts "Голем не выдержал атаки и погиб."
		end
elsif golem_hp > 0 && attuser == attnog
	golem_hp = golem_hp - anog
	puts "Вы ударили голема по ногам и нанесли #{anog} урона. У голема осталось #{troll_hp} здоровья"
		if golem_hp < 0
		puts "Голем не выдержал атаки и погиб."
		end
end

if golem_hp > 0
	your_hp = your_hp - attack
	puts "Голем внезапно увеличился в размере! Занес над вами огромные каменные кулаки и нанес вам урон #{attack}. Ваше здоровье стало #{your_hp}"
		if your_hp < 0
		puts "Вы не выдержали удар и погибли!"
		exit
		end
end
end


end