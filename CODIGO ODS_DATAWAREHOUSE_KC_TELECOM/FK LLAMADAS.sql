USE ODS;

/*NO COMMENTS*/

ALTER TABLE ODS_HC_LLAMADAS ADD INDEX fk_llam_cli_idx (ID_CLIENTE ASC);
ALTER TABLE ODS_HC_LLAMADAS ADD CONSTRAINT fk_llam_cli FOREIGN KEY (ID_CLIENTE) REFERENCES ODS_HC_CLIENTES (ID_CLIENTE);

ALTER TABLE ODS_HC_LLAMADAS ADD INDEX fk_llam_agentes_idx (ID_AGENTE ASC);
ALTER TABLE ODS_HC_LLAMADAS ADD CONSTRAINT fk_llam_agentes FOREIGN KEY(ID_AGENTE) REFERENCES ODS_DM_AGENTES_CC (ID_AGENTE_CC);

ALTER TABLE ODS_HC_LLAMADAS ADD INDEX fk_llam_departamentos_idx (ID_DEPARTAMENTO_CC ASC);
ALTER TABLE ODS_HC_LLAMADAS ADD CONSTRAINT fk_llam_departamentos FOREIGN KEY (ID_DEPARTAMENTO_CC) REFERENCES ODS_DM_DEPARTAMENTOS_CC (ID_DEPARTAMENTO_CC);
