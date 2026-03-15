import { pgTable, serial, text, timestamp } from "drizzle-orm/pg-core";

export const proyectos = pgTable("proyectos", {
  id: serial("id").primaryKey(),

  titulo: text("titulo").notNull(),

  descripcion: text("descripcion").notNull(),

  githubUrl: text("github_url"),

  imageUrl: text("image_url").notNull(),

  createdAt: timestamp("created_at").defaultNow().notNull(),
});
