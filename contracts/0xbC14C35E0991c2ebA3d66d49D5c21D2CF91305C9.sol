contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 1
    return code.data[104 len 2207]
}



// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
array of struct _length;

function get_length(uint256 arg1, uint256 arg2) payable {
    require arg1 < _length.length
    return _length[arg1][arg2].field_0
}

function get_entry(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require arg1 < _length.length
    require arg3 < _length[arg1][arg2].field_0
    return _length[arg1][arg2][arg3].field_0
}

function admin() payable {
    return address(adminAddress)
}

function _fallback() payable {
  stop
}

function count() payable {
    return (_length.length - 1)
}

function has(uint256 arg1) payable {
    return arg1 <= _length.length - 1
}

function new_entry() payable {
    if address(adminAddress) != msg.sender:
        return 0
    _length.length++
    return _length.length
}

function transfer_ownership(address arg1) payable {
    if msg.sender == address(adminAddress):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function clear(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(adminAddress):
        require arg1 < _length.length
        _length[arg1][arg2].field_0 = 0
        if not _length[arg1][arg2].field_0 <= 0:
            idx = 0
            while _length[arg1][arg2].field_0 > idx:
                _length[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function get_all(uint256 arg1, uint256 arg2) payable {
    require arg1 < _length.length
    if _length[arg1][arg2].field_0:
        mem[160] = _length[arg1][arg2].field_0
        idx = 160
        s = 0
        while (32 * _length[arg1][arg2].field_0) + 128 > idx:
            mem[idx + 32] = _length[arg1][arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=_length[arg1][arg2].field_0, data=mem[160 len 32 * _length[arg1][arg2].field_0])
}

function add(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(adminAddress):
        require arg1 < _length.length
        _length[arg1][arg2].field_0++
        if not _length[arg1][arg2].field_0 <= _length[arg1][arg2].field_0 + 1:
            idx = _length[arg1][arg2].field_0 + 1
            while _length[arg1][arg2].field_0 > idx:
                _length[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        require _length[arg1][arg2].field_0 < _length[arg1][arg2].field_0
        _length[arg1][arg2][_length[arg1][arg2].field_0].field_0 = arg3
}

function delete_entry(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(adminAddress):
        require arg1 < _length.length
        idx = arg3
        while idx + 1 < _length[arg1][arg2].field_0:
            require idx < _length[arg1][arg2].field_0
            mem[0] = sha3(arg2, arg1 + sha3(1))
            _length[arg1][arg2][idx].field_0 = _length[arg1][arg2][idx].field_256
            idx = idx + 1
            continue 
        _length[arg1][arg2].field_0--
        if not _length[arg1][arg2].field_0 <= _length[arg1][arg2].field_0 - 1:
            idx = _length[arg1][arg2].field_0 - 1
            while _length[arg1][arg2].field_0 > idx:
                _length[arg1][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
