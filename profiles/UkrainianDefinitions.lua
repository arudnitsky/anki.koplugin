local Config = {
    ----------------------------------------------
    ---- [[ GENERAL CONFIGURATION OPTIONS ]] -----
    ----------------------------------------------
    -- This refers to the IP address of the PC ankiconnect is running on
    -- Remember to expose the port ankiconnect listens on so we can connect to it
    -- [REQUIRED] The ankiconnect settings also need to be updated to not only listen on the loopback address
    url = "http://192.168.1.8:8765",

    -- [REQUIRED] name of the anki deck
    deckName = "KOReader Inbox",

    -- [REQUIRED] note type of the notes that should be created
    modelName = "KOReader Ukrainian Definitions",

    -- Each note created by the plugin will have the tag 'KOReader', it is possible to add other custom tags
    -- A card with custom tags can be created by pressing and holding the 'Add to Anki' button, which pops up a menu with some extra options.
    custom_tags = {},

    -- It is possible to toggle whether duplicate notes can be created. This can be of use if your note type contains the full sentence as first field (meaning this gets looked at for uniqueness)
    -- When multiple unknown words are present, it won't be possible to add both in this case, because the sentence would be the same.
    allow_dupes = false,

    -- The scope where ankiconnect will look to to find duplicates
    dupe_scope = "deck",

    -- api key - extra authentication supported by ankiconnect, see https://git.foosoft.net/alex/anki-connect#authentication
    -- this is totally optional and probably unnecessary, unless you expose anki-connect on the public network for some reason
    api_key = nil,

    ----------------------------------------------
    --- [[ NOTE FIELD CONFIGURATION OPTIONS ]] ---
    ----------------------------------------------
    -- [REQUIRED] The field name where the word which was looked up in a dictionary will be sent to.
    word_field = "Word",

    -- The field name where the sentence in which the word we looked up occurred will be sent to.
    context_field = "Context",

    -- Translation of the context field
    -- translated_context_field = "Translated_Context",

    -- Amount of sentences which are prepended to the word looked up. Set this to 1 to complete the current sentence.
    prev_sentence_count = 1,

    -- Amount of sentences which are appended to the word looked up. Set this to 1 to complete the current sentence.
    next_sentence_count = 1,

    -- [REQUIRED] The field name where the dictionary definition will be sent to.
    def_field = "Word_Definition",

    -- [Required] The word that was found in the dictionary
    dict_word_field = "Dictionary_Word",

    -- The field name where metadata (book source, page number, ...) will be sent to.
    -- This metadata is parsed from the EPUB's metadata, or from the filename
    meta_field = "Notes",

    -- The plugin can query Forvo for audio of the word you just looked up.
    -- The field name where the audio will be sent to.
    -- audio_field = "VocabAudio",

    -- list of extensions which should be enabled, by default they are all off
    -- an extension is turned on by listing its filename in the table below
    -- existing extensions are listed below, remove the leading -- to enable them
    enabled_extensions = {
   }
}
return Config
