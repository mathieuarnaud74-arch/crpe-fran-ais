export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[];

export interface Database {
  public: {
    Tables: {
      profiles: {
        Row: {
          id: string;
          display_name: string | null;
          role: string;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id: string;
          display_name?: string | null;
          role?: string;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          display_name?: string | null;
          role?: string;
          updated_at?: string;
        };
        Relationships: [];
      };
      pages: {
        Row: {
          id: string;
          slug: string;
          title: string;
          status: Database["public"]["Enums"]["page_status"];
          last_published_at: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          slug: string;
          title: string;
          status?: Database["public"]["Enums"]["page_status"];
          last_published_at?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          slug?: string;
          title?: string;
          status?: Database["public"]["Enums"]["page_status"];
          last_published_at?: string | null;
          updated_at?: string;
        };
        Relationships: [];
      };
      page_sections: {
        Row: {
          id: string;
          page_id: string;
          stage: Database["public"]["Enums"]["page_section_stage"];
          type: string;
          order_index: number;
          visible: boolean;
          props_json: Json;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          page_id: string;
          stage?: Database["public"]["Enums"]["page_section_stage"];
          type: string;
          order_index?: number;
          visible?: boolean;
          props_json?: Json;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          stage?: Database["public"]["Enums"]["page_section_stage"];
          type?: string;
          order_index?: number;
          visible?: boolean;
          props_json?: Json;
          updated_at?: string;
        };
        Relationships: [];
      };
      subscriptions: {
        Row: {
          id: string;
          user_id: string;
          stripe_customer_id: string | null;
          stripe_subscription_id: string | null;
          stripe_price_id: string | null;
          status: string;
          current_period_end: string | null;
          cancel_at_period_end: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          stripe_customer_id?: string | null;
          stripe_subscription_id?: string | null;
          stripe_price_id?: string | null;
          status?: string;
          current_period_end?: string | null;
          cancel_at_period_end?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          stripe_customer_id?: string | null;
          stripe_subscription_id?: string | null;
          stripe_price_id?: string | null;
          status?: string;
          current_period_end?: string | null;
          cancel_at_period_end?: boolean;
          updated_at?: string;
        };
        Relationships: [];
      };
      exercises: {
        Row: {
          id: string;
          subject: string;
          subdomain: string;
          topic_key: string | null;
          topic_label: string | null;
          level: string;
          exercise_type: string;
          instruction: string;
          support_text: string | null;
          choices: Json | null;
          expected_answer: Json;
          detailed_explanation: string;
          validation_status: string;
          source: string | null;
          access_tier: string;
          is_published: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          subject?: string;
          subdomain: string;
          topic_key?: string | null;
          topic_label?: string | null;
          level: string;
          exercise_type: string;
          instruction: string;
          support_text?: string | null;
          choices?: Json | null;
          expected_answer: Json;
          detailed_explanation: string;
          validation_status?: string;
          source?: string | null;
          access_tier?: string;
          is_published?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          subject?: string;
          subdomain?: string;
          topic_key?: string | null;
          topic_label?: string | null;
          level?: string;
          exercise_type?: string;
          instruction?: string;
          support_text?: string | null;
          choices?: Json | null;
          expected_answer?: Json;
          detailed_explanation?: string;
          validation_status?: string;
          source?: string | null;
          access_tier?: string;
          is_published?: boolean;
          updated_at?: string;
        };
        Relationships: [];
      };
      attempts: {
        Row: {
          id: string;
          user_id: string;
          exercise_id: string;
          submitted_answer: Json;
          is_correct: boolean;
          score: number;
          time_spent_ms: number | null;
          xp_earned: number | null;
          exercise_mode: string | null;
          answered_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          exercise_id: string;
          submitted_answer: Json;
          is_correct: boolean;
          score: number;
          time_spent_ms?: number | null;
          xp_earned?: number | null;
          exercise_mode?: string | null;
          answered_at?: string;
        };
        Update: {
          submitted_answer?: Json;
          is_correct?: boolean;
          score?: number;
          time_spent_ms?: number | null;
          xp_earned?: number | null;
          exercise_mode?: string | null;
        };
        Relationships: [];
      };
      user_gamification: {
        Row: {
          id: string;
          user_id: string;
          xp: number;
          level: number;
          current_streak: number;
          longest_streak: number;
          last_activity_date: string | null;
          sound_enabled: boolean;
          reduced_animations: boolean;
          daily_goal: number;
          personal_best_sprint_time: number | null;
          onboarding_completed: boolean;
          daily_streak: number;
          longest_daily_streak: number;
          streak_freeze_remaining: number;
          streak_frozen_on: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          xp?: number;
          level?: number;
          current_streak?: number;
          longest_streak?: number;
          last_activity_date?: string | null;
          sound_enabled?: boolean;
          reduced_animations?: boolean;
          daily_goal?: number;
          personal_best_sprint_time?: number | null;
          onboarding_completed?: boolean;
          daily_streak?: number;
          longest_daily_streak?: number;
          streak_freeze_remaining?: number;
          streak_frozen_on?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          user_id?: string;
          xp?: number;
          level?: number;
          current_streak?: number;
          longest_streak?: number;
          last_activity_date?: string | null;
          sound_enabled?: boolean;
          reduced_animations?: boolean;
          daily_goal?: number;
          personal_best_sprint_time?: number | null;
          onboarding_completed?: boolean;
          daily_streak?: number;
          longest_daily_streak?: number;
          streak_freeze_remaining?: number;
          streak_frozen_on?: string | null;
          updated_at?: string;
        };
        Relationships: [];
      };
      diagnostic_results: {
        Row: {
          id: string;
          user_id: string;
          completed_at: string;
          score: number;
          total: number;
          profile_label: string;
          profile_detail: string;
          subdomains: Json;
          created_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          completed_at: string;
          score: number;
          total: number;
          profile_label: string;
          profile_detail: string;
          subdomains: Json;
          created_at?: string;
        };
        Update: {
          completed_at?: string;
          score?: number;
          total?: number;
          profile_label?: string;
          profile_detail?: string;
          subdomains?: Json;
        };
        Relationships: [];
      };
      srs_cards: {
        Row: {
          id: string;
          user_id: string;
          exercise_id: string;
          due: string;
          stability: number;
          difficulty: number;
          elapsed_days: number;
          scheduled_days: number;
          reps: number;
          lapses: number;
          state: number;
          last_review: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          user_id: string;
          exercise_id: string;
          due?: string;
          stability?: number;
          difficulty?: number;
          elapsed_days?: number;
          scheduled_days?: number;
          reps?: number;
          lapses?: number;
          state?: number;
          last_review?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: {
          due?: string;
          stability?: number;
          difficulty?: number;
          elapsed_days?: number;
          scheduled_days?: number;
          reps?: number;
          lapses?: number;
          state?: number;
          last_review?: string | null;
          updated_at?: string;
        };
        Relationships: [];
      };
    };
    Views: Record<string, never>;
    Functions: {
      publish_page_sections: {
        Args: {
          target_page_slug: string;
        };
        Returns: void;
      };
    };
    Enums: {
      exercise_subdomain:
        | "grammaire"
        | "orthographe"
        | "conjugaison"
        | "lexique"
        | "comprehension_texte"
        | "analyse_langue"
        | "didactique_francais";
      exercise_type:
        | "qcm"
        | "vrai_faux"
        | "reponse_courte"
        | "identification_grammaticale"
        | "correction_orthographique"
        | "analyse_texte";
      validation_status: "brouillon" | "valide";
      access_tier: "free" | "premium";
      page_status: "draft" | "published";
      page_section_stage: "draft" | "published";
    };
    CompositeTypes: Record<string, never>;
  };
}
