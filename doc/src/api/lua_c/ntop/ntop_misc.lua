--! @brief Get ntopng directory information.
--! @return table (installdir, workingdir, scriptdir, httpdocsdir, callbacksdir).
function ntop.getDirs()

--! @brief Get ntopng status information.
--! @return ntopng information.
function ntop.getInfo()

--! @brief Get seconds from ntopng startup.
--! @return ntopng uptime in seconds.
function ntop.getUptime()

--! @brief Get the ntopng HTTP prefix.
--! @details The HTTP prefix is the initial part of the ntopng URL, which consists of HTTP host, port and optionally a user-defined prefix. Any URL within ntopng should include this prefix.
--! @return the HTTP prefix.
function ntop.getHttpPrefix()

--! @brief Generate a random value to prevent CSRF and XSRF attacks.
--! @return the token value.
--! @note Any HTTP POST request must contain a "csrf" field with a token value generated by a call to this function.
function ntop.getRandomCSRFValue()

--! @brief Check if ntopng is shuttind down.
--! @return true if is shuttting down, false otherwise.
function ntop.isShutdown()


--! @brief Get the ntopng local networks list.
--! @return table (network_address -> "").
function ntop.getLocalNetworks()

--! @brief Add a network to the ntopng local networks list.
--! @param network_cidr the network to add in CIDR format.
function ntop.addLocalNetwork(string network_cidr)

--! @brief Retrieves a ntopng local network by its id.
--! @param network_id the local network id.
--! @return the network address on success, an empty string otherwise.
function ntop.getNetworkNameById(int network_id)


--! @brief Get information about the currest host.
--! @return table (ip, instance_name).
function ntop.getHostInformation()

--! @brief Get ntopng host statistics.
--! @return table (cpu_load, cpu_idle, mem_total, mem_free, mem_buffers, mem_cached, mem_shmem. mem_used).
function ntop.systemHostStat()

--! @brief Send a message to syslog.
--! @param message the message to send.
--! @param syslog_severity an integer representing the standard syslog severity as per RFC 5424. LOG_INFO is used when severity is not specified.
function syslog(string message, int syslog_severity);

--! @brief Set ntopng logging level.
--! @param level one of "trace", "debug", "info", "normal", "warning", "error".
function ntop.setLoggingLevel(string level)

--! @brief Log a message.
--! @param msg the message to log.
--! @note Message will be logged with "normal" level.
function ntop.traceEvent(string msg)

--! @brief Check if verbose trace is enabled.
--! @return true if verborse trace is enabled, false otherwise.
function ntop.verboseTrace()



--! @brief Get the current time in milliseconds.
--! @return the current miliiseconds time.
function ntop.gettimemsec()

--! @brief Check if the ntopng gui login is disable.
--! @return true if login is disabled, false otherwise.
function ntop.isLoginDisabled()

--! @brief Check if ntopng has seen any VLAN tagged traffic.
--! @return true if VLAN traffic has been seen, false otherwise.
function ntop.hasVLANs()

--! @brief Check if ntopng has Geo IP support available.
--! @return true if Geo IP is available, false otherwise.
function ntop.hasGeoIP()

--! @brief Check if the operating system is Windows.
--! @return true if Windows, false otherwise.
function ntop.isWindows()

--! @brief Sleep with milliseconds accuracy.
--! @param duration in milliseconds.
function ntop.msleep(int duration)

--! @brief Get the manufacturer name from mac address.
--! @param mac the MAC address.
--! @return table(short, extended) on success, nil otherwise.
function ntop.getMacManufacturer(string mac)
