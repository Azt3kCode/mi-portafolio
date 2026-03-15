import { pgTable, serial, text } from "drizzle-orm/pg-core";

export const stack = pgTable("stack", {
  id: serial("id").primaryKey(),
  nombre: text("nombre").notNull(),
});
