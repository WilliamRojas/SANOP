class CreateAccidentes < ActiveRecord::Migration
  def change
    create_table :accidentes do |t|
      t.string :nombre_del_diligenciador
      t.string :documento
      t.references :tipodoc, index: true
      t.string :tipo_de_vinculacion
      t.string :razon_social
      t.string :direccion_sede_principal
      t.string :direccion_reportada
      t.string :telefono_reportado
      t.string :actividad_economica_sede_principal
      t.string :codigo1
      t.string :telefono_sede_principal
      t.string :fax_sede_principal
      t.string :email_sede_principal
      t.references :departamento, index: true
      t.references :municipio, index: true
      t.string :zona1
      t.string :actividad_economica_centro_trabajo
      t.string :direccion_centro_trabajo
      t.string :telefono_ct
      t.string :fax_ct
      t.string :email_ct
      t.integer :departamento2
      t.integer :municipio2
      t.string :zona
      t.references :funcionario, index: true
      t.date :fecha_del_accidente
      t.string :hora_del_accidente
      t.string :dia_de_la_semana
      t.string :jornada_en_que_sucede
      t.boolean :realiza_su_labor
      t.string :ocupacion_no_habitual
      t.string :tiempo_laborado
      t.string :lugar_donde_ocurrio_el_at
      t.string :mecanismo_o_formato_del_at
      t.string :tipo_de_lesion
      t.string :sitio
      t.string :tipo_de_accidente
      t.string :parte_del_cuerpo_afectado
      t.string :agente_del_accidente
      t.integer :departamento3
      t.integer :municipio3
      t.string :zona3
      t.boolean :mortal
      t.date :fecha_mortal
      t.string :descripcion_del_at
      t.boolean :hubo_personas_que_presenciaron_el_accidente
      t.string :testigo1
      t.integer :tipodoc2
      t.string :documento2
      t.string :testigo2
      t.integer :tipodoc3
      t.string :documento3
      t.string :responsable_informe
      t.integer :tipodoc4
      t.string :documento4

      t.timestamps
    end
  end
end
