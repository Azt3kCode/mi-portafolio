import { pgTable, integer } from "drizzle-orm/pg-core";
import { proyectos } from "./Proyectos";
import { tecnologias } from "./Tecnologias";

export const proyectosTecnologias = pgTable("proyectos_tecnologias", {
  projectId: integer("proyecto_id")
    .references(() => proyectos.id, { onDelete: "cascade" })
    .notNull(),

  tecnologiaId: integer("tecnologia_id")
    .references(() => tecnologias.id, { onDelete: "cascade" })
    .notNull(),
});
