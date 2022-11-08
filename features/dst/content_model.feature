@api
Feature: Content model
  In order to enter structured content into my site
  As a content editor
  I want to have content entity types that reflect my content model.

  Scenario: Bundles
    Then exactly the following content entity type bundles should exist
      | Name | Machine name | Type | Description |
      | Categories | categories | Vocabulary | Descriptive metadata, for categorizing content and making search engines happy. |
      | Document | document | Media type | Locally hosted documents. |
      | Image | image | Media type | Locally hosted images. |
      | Page | basic_page | Content type | An unstructured content type that provides unique landing pages - e.g., a homepage, or marketing event landing page. |
      | Tags | tags | Vocabulary | Descriptive metadata, for categorizing content and making search engines happy. |
      | Video | video | Media type | Remotely hosted videos from external sources, e.g. YouTube, Vimeo. |
      | Reusable block | reusable_block | Custom block type | Build your block on Gutenberg editor and re-use it everywhere! |

  Scenario: Fields
    Then exactly the following fields should exist
      | Bundle | Field label | Machine name | Field type | Required | Cardinality | Form widget | Translatable | Help text |
      | Document (Media type) | File | field_media_file | File | Required | 1 | File | Translatable |  |
      | Document (Media type) | Categories | field_categories | Entity reference |  | Unlimited | Select list | Translatable |  |
      | Document (Media type) | Tags | field_tags | Entity reference |  | Unlimited | Autocomplete (Tags style) | Translatable |  |
      | Image (Media type) | Image | field_media_image | Image | Required | 1 | Image (Focal Point) | Translatable |  |
      | Image (Media type) | Categories | field_categories | Entity reference |  | Unlimited | Select list | Translatable |  |
      | Image (Media type) | Tags | field_tags | Entity reference |  | Unlimited | Autocomplete (Tags style) | Translatable |  |
      | Page (Content type) | Body | body | Text (formatted, long, with summary) |  | 1 | Text area with a summary | Translatable |  |
      | Page (Content type) | Categories | field_categories | Entity reference |  | Unlimited | Select list | Translatable |  |
      | Page (Content type) | Tags | field_tags | Entity reference |  | Unlimited | Autocomplete (Tags style) | Translatable |  |
      | Video (Media type) | Remote video URL | field_media_oembed_video | Text (plain) | Required | 1 | oEmbed URL | Translatable |  |
      | Video (Media type) | Categories | field_categories | Entity reference |  | Unlimited | Select list | Translatable |  |
      | Reusable block (Custom block type) | Body | body | Text (formatted, long, with summary) |  | 1 | Text area with a summary | Translatable |  |
