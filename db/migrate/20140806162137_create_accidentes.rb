class CreateAccidentes < ActiveRecord::Migration
  def change
    create_table :accidentes do |t|
      t.string :nombre_
      t.string :del_diligenciador
      t.string :documento
      t.references :tipodoc, index: true
      t.string :tipo_de_vinculacion
      t.string :razon_social
      t.string :direccion_sede_principal
      t.string :direccion_reportada
      t.string :telefono_reportado
      t.string :actividad_economica_sede_principal
      t.string :codigo
      t.string :telefono_sede_principal
      t.string :fax_sede_principal
      t.string :email_sede_principal
      t.references :departamento, index: true
      t.references :municipio, index: true
      t.string :zona
      t.string :actividad_economica_ct
      t.string :direccion_ct
      t.string :telefono_ct
      t.string :fax_ct
      t.string :email_ct
      t.references :departamento, index: true
      t.references :municipio, index: true
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
      t.boolean :tipo_de_accidente
      t.string :parte_del_cuerpo_afectado
      t.string :agente_del_accidente
      t.references :departamento, index: true
      t.references :municipio, index: true
      t.string :zona_at
      t.boolean :mortal
      t.string :fecha_mortal
      t.string :descripcion_del_at
      t.boolean :hubo_personas_que_presenciaron_el_accidente
      t.string :responsable_del_informe
      t.references :tipodoc, index: true
      t.string :documento

      t.timestamps
    end
  end
end
