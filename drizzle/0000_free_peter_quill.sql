CREATE TABLE "proyectos" (
	"id" serial PRIMARY KEY NOT NULL,
	"titulo" text NOT NULL,
	"descripcion" text NOT NULL,
	"github_url" text,
	"image_url" text NOT NULL,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "stack" (
	"id" serial PRIMARY KEY NOT NULL,
	"nombre" text NOT NULL
);
--> statement-breakpoint
CREATE TABLE "tecnologias" (
	"id" serial PRIMARY KEY NOT NULL,
	"nombre" text NOT NULL,
	"image_url" text NOT NULL,
	"stack_id" integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE "proyectos_tecnologias" (
	"proyecto_id" integer NOT NULL,
	"tecnologia_id" integer NOT NULL
);
--> statement-breakpoint
ALTER TABLE "tecnologias" ADD CONSTRAINT "tecnologias_stack_id_stack_id_fk" FOREIGN KEY ("stack_id") REFERENCES "public"."stack"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "proyectos_tecnologias" ADD CONSTRAINT "proyectos_tecnologias_proyecto_id_proyectos_id_fk" FOREIGN KEY ("proyecto_id") REFERENCES "public"."proyectos"("id") ON DELETE cascade ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "proyectos_tecnologias" ADD CONSTRAINT "proyectos_tecnologias_tecnologia_id_tecnologias_id_fk" FOREIGN KEY ("tecnologia_id") REFERENCES "public"."tecnologias"("id") ON DELETE cascade ON UPDATE no action;