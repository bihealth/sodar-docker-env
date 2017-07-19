// See: https://github.com/DICE-UNC/irods-cloud-browser/blob/10a878e0227be4b0d749a5d0ab1769fff251af34/Docs/Docker.md

// use login preset
beconf.login.preset.host='irods'
beconf.login.preset.port=1247
beconf.login.preset.zone='omicsZone'
beconf.login.preset.auth.type='STANDARD'
beconf.login.preset.enabled=true
beconf.negotiation.policy='CS_NEG_REFUSE' // NO_NEGOTIATION, CS_NEG_REFUSE, CS_NEG_REQ, CS_NEG_DONT_CARE
