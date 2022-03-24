contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 477]




// =====================  Runtime code  =====================


mapping of struct _publisher;

function get_publisher(bytes32 arg1) payable {
    return _publisher[arg1].field_0
}

function get_timestamp(bytes32 arg1) payable {
    return _publisher[arg1].field_768
}

function get_burned(bytes32 arg1) payable {
    return _publisher[arg1].field_512
}

function get_stake(bytes32 arg1) payable {
    return _publisher[arg1].field_256
}

function _fallback() payable {
  stop
}

function hash_db(bytes32 arg1) payable {
    return _publisher[arg1].field_0, _publisher[arg1].field_256, _publisher[arg1].field_512, _publisher[arg1].field_768
}

function publish(bytes32 arg1) payable {
    require not _publisher[arg1].field_0
    _publisher[arg1].field_0 = msg.sender or Mask(96, 160, _publisher[arg1].field_0)
    _publisher[arg1].field_256 = eth.balance(msg.sender)
    _publisher[arg1].field_512 = msg.value
    _publisher[arg1].field_768 = block.timestamp
}



}
