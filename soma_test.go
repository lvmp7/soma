package soma

import "testing"

func TestSoma(t *testing.T) {
	result := soma(5, 5)
	if result != 10 {
		t.Errorf("Soma(5+5) = %v ; want 10", result)
	}
}
