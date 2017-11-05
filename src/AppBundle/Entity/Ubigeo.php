<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Ubigeo
 *
 * @ORM\Table(name="ubigeo")
 * @ORM\Entity
 */
class Ubigeo
{
    /**
     * @var string
     *
     * @ORM\Column(name="pais", type="string", length=15, nullable=true)
     */
    private $pais;

    /**
     * @var string
     *
     * @ORM\Column(name="departamento", type="string", length=15, nullable=true)
     */
    private $departamento;

    /**
     * @var string
     *
     * @ORM\Column(name="provincia", type="string", length=15, nullable=true)
     */
    private $provincia;

    /**
     * @var string
     *
     * @ORM\Column(name="distrito", type="string", length=15, nullable=true)
     */
    private $distrito;

    /**
     * @var string
     *
     * @ORM\Column(name="estado", type="string", length=15, nullable=true)
     */
    private $estado;

    /**
     * @var integer
     *
     * @ORM\Column(name="idubigeo", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idubigeo;


}

