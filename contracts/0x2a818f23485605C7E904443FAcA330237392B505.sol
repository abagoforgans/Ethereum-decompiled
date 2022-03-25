contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor6;

function _fallback() payable {
    stor0 = 0x9cc04373e74f7dc7718d509025d12294656b328a
    stor1 = 0xa158c2930ac2e713d8053e3daa2bfeb43a998c57
    stor6 = 0
    return code.data[98 len 117]
}



// =====================  Runtime code  =====================


address owner;
address confirmerAddress;

function confirmer() {
    return confirmerAddress
}

function owner() {
    return owner
}

function _fallback() {
  stop
}



}
