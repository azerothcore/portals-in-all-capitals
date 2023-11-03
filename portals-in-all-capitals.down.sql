-- !!! NOTE: check these before running the queries in order to avoid conflicts !!!
SET @GO_TEMPLATE = 500000;

DELETE FROM `gameobject_template` WHERE `entry` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (
  @GO_TEMPLATE + 0,
  @GO_TEMPLATE + 1,
  @GO_TEMPLATE + 2,
  @GO_TEMPLATE + 3,
  @GO_TEMPLATE + 4,
  @GO_TEMPLATE + 5,
  @GO_TEMPLATE + 6,
  @GO_TEMPLATE + 7
);

DELETE FROM `gameobject` WHERE `id` IN (
    @GO_TEMPLATE + 0,
    @GO_TEMPLATE + 1,
    @GO_TEMPLATE + 2,
    @GO_TEMPLATE + 3,
    @GO_TEMPLATE + 4,
    @GO_TEMPLATE + 5,
    @GO_TEMPLATE + 6,
    @GO_TEMPLATE + 7
);

DELETE FROM `gameobject_template_locale` WHERE `entry` BETWEEN @GO_TEMPLATE + 0 AND @GO_TEMPLATE + 7;
