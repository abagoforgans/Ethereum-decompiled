contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 907]




// =====================  Runtime code  =====================


mapping of address sub_20c38e2b;
mapping of uint256 sub_b2fccc7f;

function sub_20c38e2b(?) payable {
    return address(sub_20c38e2b[arg1])
}

function sub_b2fccc7f(?) payable {
    return sub_b2fccc7f[arg1]
}

function _fallback() payable {
  stop
}

function update(bytes32 arg1, bytes32 arg2) payable {
    if msg.sender == address(sub_20c38e2b[arg1]):
        sub_b2fccc7f[arg1] = arg2
}

function transfer(bytes32 arg1, address arg2) payable {
    if msg.sender == address(sub_20c38e2b[arg1]):
        uint256(sub_20c38e2b[arg1]) = arg2 or Mask(96, 160, uint256(sub_20c38e2b[arg1]))
}

function register(bytes32 arg1, bytes32 arg2) payable {
    if not address(sub_20c38e2b[arg1]):
        if arg1:
            uint256(sub_20c38e2b[arg1]) = msg.sender or Mask(96, 160, uint256(sub_20c38e2b[arg1]))
            sub_b2fccc7f[arg1] = arg2
}



}
