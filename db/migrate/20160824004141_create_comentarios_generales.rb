class CreateComentariosGenerales < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios_generales do |t|
      t.string :comentario_id, limit: 10, null: false, default: '', unique: true
      t.text :subject, :null => false
      t.text :commentArray, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :comentarios_generales
  end
end
