# frozen_string_literal: true

user = User.create(
  email: 'test@gmail.com',
  password_digest: '$2a$12$.hfxyj.RAI0TWVTtqbPrHeBPtETLXhr2qMqP1MvCii3SdVRyr28bG',
  first_name: 'Test',
  last_name: 'User'
)

description = '<p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><blockquote><em>“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</em></blockquote><p><br></p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p><p><br></p><p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p><blockquote><em>“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</em></blockquote><p><br></p><p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit; background-color: transparent;\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>'

Destination.create(
  location: 'Interlaken, Switzerland',
  image: File.open('/home/james/src/chaperone/app/images/interlaken.jpg'),
  caption: 'Joshua Earle // Unsplash',
  description: description,
  map_embed_src: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21896.59702945978!2d7.840320414079414!3d46.68452805527821!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1453996a31921a05%3A0x9c111af14c02be00!2sInterlaken%2C%20Switzerland!5e0!3m2!1sen!2sus!4v1610078442510!5m2!1sen!2sus',
  user_id: user.id
)

Destination.create(
  location: 'Strasbourg, France',
  image: File.open('/home/james/src/chaperone/app/images/strasbourg.jpg'),
  caption: 'Chan Lee // Unsplash',
  description: description,
  map_embed_src: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d84483.91435636113!2d7.692054992846816!3d48.5692059045779!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4796c8495e18b2c1%3A0x971a483118e7241f!2sStrasbourg%2C%20France!5e0!3m2!1sen!2sus!4v1610080028003!5m2!1sen!2sus",
  user_id: user.id
)

Destination.create(
  location: 'Florence, Italy',
  image: File.open('/home/james/src/chaperone/app/images/florence.jpg'),
  caption: 'Nick Fewings // Unsplash',
  description: description,
  map_embed_src: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d46090.483966750624!2d11.205948652076097!3d43.78001477437566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132a56a680d2d6ad%3A0x93d57917efc72a03!2sFlorence%2C%20Metropolitan%20City%20of%20Florence%2C%20Italy!5e0!3m2!1sen!2sus!4v1610081176748!5m2!1sen!2sus",
  user_id: user.id
)