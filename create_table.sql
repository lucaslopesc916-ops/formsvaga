create table if not exists candidatos_automacao (
  id uuid default gen_random_uuid() primary key,
  created_at timestamptz default now(),
  nome text,
  email text,
  whatsapp text,
  linkedin text,
  cidade text,
  disponibilidade text,
  trajetoria text,
  ferramentas_ia text,
  nivel_ia text,
  caso_real_ia text,
  ferramentas_automacao text,
  automacao_do_zero text,
  automacao_complexa text,
  nivel_dev text,
  linguagens text,
  como_se_atualiza text,
  ideia_para_sistema text,
  por_que_llc text,
  portfolio text,
  quando_comecar text,
  pretensao text,
  info_adicional text
);

alter table candidatos_automacao enable row level security;

create policy "allow_insert" on candidatos_automacao
  for insert to anon with check (true);

create policy "allow_select" on candidatos_automacao
  for select to anon using (true);

create policy "allow_delete" on candidatos_automacao
  for delete to anon using (true);
