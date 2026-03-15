import { pgTable, serial, text, integer } from "drizzle-orm/pg-core";
import { stack } from "./Stack";

export const tecnologias = pgTable("tecnologias", {
  id: serial("id").primaryKey(),
  nombre: text("nombre").notNull(),
  imageUrl: text("image_url").notNull(),
  stackId: integer("stack_id")
    .references(() => stack.id, { onDelete: "cascade" })
    .notNull(),
});
