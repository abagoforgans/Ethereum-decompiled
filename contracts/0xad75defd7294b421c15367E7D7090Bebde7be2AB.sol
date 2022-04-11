contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 5
    require not msg.value
    return code.data[33 len 993]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of struct sub_5112711a;
mapping of uint256 sub_ffb8df83;

function sub_5112711a(?) {
    require arg1 < sub_5112711a.length
    return sub_5112711a[arg1].field_0, sub_5112711a[arg1].field_256
}

function getCountTopScores() {
    return sub_5112711a.length
}

function sub_ffb8df83(?) {
    return sub_ffb8df83[arg1]
}

function _fallback() payable {
    revert
}

function sub_030bb4fc(?) {
    if sub_ffb8df83[address(msg.sender)] < arg1:
        sub_ffb8df83[address(msg.sender)] = arg1
    if sub_5112711a.length >= stor0:
        s = 0
        idx = 0
        s = 0
        while idx < sub_5112711a.length:
            mem[0] = 1
            if idx:
                if s <= sub_5112711a[idx].field_256:
                    s = (2 * idx) + sha3(1)
                    idx = idx + 1
                    s = s
                    continue 
            s = (2 * idx) + sha3(1)
            idx = idx + 1
            s = sub_5112711a[idx].field_256
            continue 
        if arg1 > s:
            require 0 < sub_5112711a.length
            address(sub_5112711a.field_0) = msg.sender
            uint256(sub_5112711a.field_256) = arg1
    else:
        sub_5112711a.length++
        if not sub_5112711a.length <= sub_5112711a.length + 1:
            idx = 2 * sub_5112711a.length + 1
            while 2 * sub_5112711a.length > idx:
                sub_5112711a[idx].field_0 = 0
                sub_5112711a[idx].field_256 = 0
                idx = idx + 2
                continue 
        sub_5112711a[sub_5112711a.length].field_0 = msg.sender
        sub_5112711a[sub_5112711a.length].field_256 = arg1
}



}
